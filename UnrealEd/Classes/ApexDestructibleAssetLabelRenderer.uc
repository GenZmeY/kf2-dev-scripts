/*=============================================================================
	ApexDestructibleAssetLabelRenderer.uc: Apex integration for Destructible Assets
	Copyright 2008-2009 NVIDIA corporation..
=============================================================================*/

class ApexDestructibleAssetLabelRenderer extends ThumbnailLabelRenderer
	native;

cpptext
{
protected:
	/**
	 * Adds the name of the object and information about meshes, assets & chunks
	 *
	 * @param Object the object to build the labels for
	 * @param OutLabels the array that is added to
	 */
	void BuildLabelList(UObject* Object, const ThumbnailOptions& InOptions, TArray<FString>& OutLabels);
}
