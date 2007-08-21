/** 
 * @file llpreviewgesture.h
 * @brief Editing UI for inventory-based gestures.
 *
 * Copyright (c) 2004-$CurrentYear$, Linden Research, Inc.
 * $License$
 */

#ifndef LL_LLPREVIEWGESTURE_H
#define LL_LLPREVIEWGESTURE_H

#include "llpreview.h"

class LLMultiGesture;
class LLLineEditor;
class LLTextBox;
class LLCheckBoxCtrl;
class LLComboBox;
class LLScrollListCtrl;
class LLScrollListItem;
class LLButton;
class LLGestureStep;
class LLRadioGroup;

class LLPreviewGesture : public LLPreview
{
public:
	// Pass an object_id if this gesture is inside an object in the world,
	// otherwise use LLUUID::null.
	static LLPreviewGesture* show(const std::string& title, const LLUUID& item_id, const LLUUID& object_id, BOOL take_focus = TRUE);

	// LLView
	virtual BOOL handleKeyHere(KEY key, MASK mask, BOOL called_from_parent);
	virtual BOOL handleDragAndDrop(S32 x, S32 y, MASK mask, BOOL drop,
									 EDragAndDropType cargo_type,
									 void* cargo_data,
									 EAcceptance* accept,
									 LLString& tooltip_msg);

	// LLPanel
	virtual BOOL postBuild();

	// LLFloater
	virtual BOOL canClose();
	virtual void setMinimized(BOOL minimize);
	virtual void onClose(bool app_quitting);
	

protected:
	LLPreviewGesture();
	virtual ~LLPreviewGesture();

	void init(const LLUUID& item_id, const LLUUID& object_id);

	// Populate various comboboxes
	void addModifiers();
	void addKeys();
	void addAnimations();
	void addSounds();

	void refresh();

	void initDefaultGesture();

	void loadAsset();

	static void onLoadComplete(LLVFS *vfs,
							   const LLUUID& asset_uuid,
							   LLAssetType::EType type,
							   void* user_data, S32 status, LLExtStat ext_status);

	void loadUIFromGesture(LLMultiGesture* gesture);

	void saveIfNeeded();

	static void onSaveComplete(const LLUUID& asset_uuid,
							   void* user_data,
							   S32 status, LLExtStat ext_status);

	static void handleSaveChangesDialog(S32 option, void* userdata);

	// Write UI back into gesture
	LLMultiGesture* createGesture();

	// Add a step.  Pass the name of the step, like "Animation",
	// "Sound", "Chat", or "Wait"
	LLScrollListItem* addStep(const std::string& step_name);

	static void updateLabel(LLScrollListItem* item);

	static void onCommitSetDirty(LLUICtrl* ctrl, void* data);
	static void onCommitLibrary(LLUICtrl* ctrl, void* data);
	static void onCommitStep(LLUICtrl* ctrl, void* data);
	static void onCommitAnimation(LLUICtrl* ctrl, void* data);
	static void onCommitSound(LLUICtrl* ctrl, void* data);
	static void onCommitChat(LLUICtrl* ctrl, void* data);
	static void onCommitWait(LLUICtrl* ctrl, void* data);
	static void onCommitWaitTime(LLUICtrl* ctrl, void* data);

	static void onCommitAnimationTrigger(LLUICtrl* ctrl, void *data);

	// Handy function to commit each keystroke
	static void onKeystrokeCommit(LLLineEditor* caller, void* data);

	static void onClickAdd(void* data);
	static void onClickUp(void* data);
	static void onClickDown(void* data);
	static void onClickDelete(void* data);

	static void onCommitActive(LLUICtrl* ctrl, void* data);
	static void onClickSave(void* data);
	static void onClickPreview(void* data);

	static void onDonePreview(LLMultiGesture* gesture, void* data);

protected:
	// LLPreview contains mDescEditor
	LLLineEditor*	mTriggerEditor;
	LLTextBox*		mReplaceText;
	LLLineEditor*	mReplaceEditor;
	LLComboBox*		mModifierCombo;
	LLComboBox*		mKeyCombo;

	LLScrollListCtrl*	mLibraryList;
	LLButton*			mAddBtn;
	LLButton*			mUpBtn;
	LLButton*			mDownBtn;
	LLButton*			mDeleteBtn;
	LLScrollListCtrl*	mStepList;

	// Options panels for items in gesture list
	LLTextBox*			mOptionsText;
	LLRadioGroup*		mAnimationRadio;
	LLComboBox*			mAnimationCombo;
	LLComboBox*			mSoundCombo;
	LLLineEditor*		mChatEditor;
	LLCheckBoxCtrl*		mWaitAnimCheck;
	LLCheckBoxCtrl*		mWaitTimeCheck;
	LLLineEditor*		mWaitTimeEditor;

	LLCheckBoxCtrl*		mActiveCheck;
	LLButton*			mSaveBtn;
	LLButton*			mPreviewBtn;

	LLMultiGesture*		mPreviewGesture;
	BOOL mDirty;
};

#endif
