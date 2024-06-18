#import "RTNContextMenu.h"

#import <react/renderer/components/RTNContextMenuSpecs/ComponentDescriptors.h>
#import <react/renderer/components/RTNContextMenuSpecs/EventEmitters.h>
#import <react/renderer/components/RTNContextMenuSpecs/Props.h>
#import <react/renderer/components/RTNContextMenuSpecs/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"

using namespace facebook::react;

@interface RTNContextMenu () <RCTRTNContextMenuViewProtocol, UIContextMenuInteractionDelegate>
@end

@implementation RTNContextMenu {
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
  return concreteComponentDescriptorProvider<RTNContextMenuComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const RTNContextMenuProps>();
    _props = defaultProps;
  }

  if (@available(iOS 13.0, *)) {
    UIContextMenuInteraction* contextInteraction = [[UIContextMenuInteraction alloc] initWithDelegate:self];
    [self addInteraction:contextInteraction];
  }

  return self;
}

- (nullable UIContextMenuConfiguration *)contextMenuInteraction:(nonnull UIContextMenuInteraction *)interaction configurationForMenuAtLocation:(CGPoint)location API_AVAILABLE(ios(13.0)){
    return [UIContextMenuConfiguration configurationWithIdentifier:nil previewProvider:nil actionProvider:^UIMenu * _Nullable(NSArray<UIMenuElement *> * _Nonnull suggestedActions) {
        UIAction *share = [UIAction actionWithTitle:@"test" image:[UIImage systemImageNamed:@"square.and.arrow.up"] identifier:nil handler:^(__kindof UIAction * _Nonnull action) {
            // empty
        }];
        
        return [UIMenu menuWithTitle:@"test" children:@[share]];
    }];
}
@end

Class<RCTComponentViewProtocol> RTNContextMenuCls(void)
{
  return RTNContextMenu.class;
}
