import React from 'react';
import {SafeAreaView, StyleSheet, Text, View} from 'react-native';

import ContextMenuView from 'rtn-context-menu/js/RTNContextMenuNativeComponent';

function App(): React.JSX.Element {
  return (
    <SafeAreaView>
      <ContextMenuView>
        <View style={styles.view}>
          <Text>text</Text>
        </View>
      </ContextMenuView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  view: {
    width: 100,
    height: 100,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'green',
  },
});

export default App;
