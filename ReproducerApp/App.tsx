import React from 'react';
import {SafeAreaView, StyleSheet, Text, View} from 'react-native';

import ContextMenuView from 'rtn-context-menu/js/RTNContextMenuNativeComponent';

function App(): React.JSX.Element {
  return (
    <SafeAreaView>
      <View>
        <ContextMenuView style={styles.view}>
          <Text>text</Text>
        </ContextMenuView>
      </View>
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
